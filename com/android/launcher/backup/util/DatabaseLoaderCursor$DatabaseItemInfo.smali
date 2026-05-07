.class public final Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/util/DatabaseLoaderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseItemInfo"
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetProvider:Ljava/lang/String;

.field private mAppWidgetSource:I

.field private mCardCategory:I

.field private mCardHostId:I

.field private mCardType:I

.field private mCellX:I

.field private mCellY:I

.field private mContainer:I

.field private mIcon:[B

.field private mIconPackage:Ljava/lang/String;

.field private mIconResource:Ljava/lang/String;

.field private mIconType:I

.field private mId:I

.field private mIntent:Ljava/lang/String;

.field private mIsSpanXFullScreen:Z

.field private mItemType:I

.field private mOptions:I

.field private mRank:I

.field private mRecommendId:I

.field private mRestoreFlag:I

.field private mScreen:I

.field private mSerialNumber:J

.field private mServiceId:Ljava/lang/String;

.field private mSpanX:I

.field private mSpanY:I

.field private mTitle:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mServiceId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardCategory:I

    return-void
.end method


# virtual methods
.method public final getMAppWidgetId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetId:I

    return p0
.end method

.method public final getMAppWidgetProvider()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    return-object p0
.end method

.method public final getMAppWidgetSource()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetSource:I

    return p0
.end method

.method public final getMCardCategory()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardCategory:I

    return p0
.end method

.method public final getMCardHostId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardHostId:I

    return p0
.end method

.method public final getMCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardType:I

    return p0
.end method

.method public final getMCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellX:I

    return p0
.end method

.method public final getMCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellY:I

    return p0
.end method

.method public final getMContainer()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mContainer:I

    return p0
.end method

.method public final getMIcon()[B
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIcon:[B

    return-object p0
.end method

.method public final getMIconPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getMIconResource()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconResource:Ljava/lang/String;

    return-object p0
.end method

.method public final getMIconType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconType:I

    return p0
.end method

.method public final getMId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mId:I

    return p0
.end method

.method public final getMIntent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIntent:Ljava/lang/String;

    return-object p0
.end method

.method public final getMIsSpanXFullScreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIsSpanXFullScreen:Z

    return p0
.end method

.method public final getMItemType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mItemType:I

    return p0
.end method

.method public final getMOptions()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mOptions:I

    return p0
.end method

.method public final getMRank()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRank:I

    return p0
.end method

.method public final getMRecommendId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRecommendId:I

    return p0
.end method

.method public final getMRestoreFlag()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRestoreFlag:I

    return p0
.end method

.method public final getMScreen()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mScreen:I

    return p0
.end method

.method public final getMSerialNumber()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSerialNumber:J

    return-wide v0
.end method

.method public final getMServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMSpanX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanX:I

    return p0
.end method

.method public final getMSpanY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanY:I

    return p0
.end method

.method public final getMTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMUser()Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final getMUserId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUserId:I

    return p0
.end method

.method public final setMAppWidgetId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetId:I

    return-void
.end method

.method public final setMAppWidgetProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    return-void
.end method

.method public final setMAppWidgetSource(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetSource:I

    return-void
.end method

.method public final setMCardCategory(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardCategory:I

    return-void
.end method

.method public final setMCardHostId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardHostId:I

    return-void
.end method

.method public final setMCardType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardType:I

    return-void
.end method

.method public final setMCellX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellX:I

    return-void
.end method

.method public final setMCellY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellY:I

    return-void
.end method

.method public final setMContainer(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mContainer:I

    return-void
.end method

.method public final setMIcon([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIcon:[B

    return-void
.end method

.method public final setMIconPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconPackage:Ljava/lang/String;

    return-void
.end method

.method public final setMIconResource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconResource:Ljava/lang/String;

    return-void
.end method

.method public final setMIconType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconType:I

    return-void
.end method

.method public final setMId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mId:I

    return-void
.end method

.method public final setMIntent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIntent:Ljava/lang/String;

    return-void
.end method

.method public final setMIsSpanXFullScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIsSpanXFullScreen:Z

    return-void
.end method

.method public final setMItemType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mItemType:I

    return-void
.end method

.method public final setMOptions(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mOptions:I

    return-void
.end method

.method public final setMRank(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRank:I

    return-void
.end method

.method public final setMRecommendId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRecommendId:I

    return-void
.end method

.method public final setMRestoreFlag(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRestoreFlag:I

    return-void
.end method

.method public final setMScreen(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mScreen:I

    return-void
.end method

.method public final setMSerialNumber(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSerialNumber:J

    return-void
.end method

.method public final setMServiceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mServiceId:Ljava/lang/String;

    return-void
.end method

.method public final setMSpanX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanX:I

    return-void
.end method

.method public final setMSpanY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanY:I

    return-void
.end method

.method public final setMTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMUser(Landroid/os/UserHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public final setMUserId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUserId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "\t[DbItem Info: "

    const-string v1, "_id: "

    invoke-static {v0, v1}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mId:I

    const-string v2, ", "

    const-string/jumbo v3, "title: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mTitle:Ljava/lang/String;

    const-string v3, "intent: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIntent:Ljava/lang/String;

    const-string v3, "container: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mContainer:I

    const-string/jumbo v3, "screen: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mScreen:I

    const-string v3, "cellX: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellX:I

    const-string v3, "cellY: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCellY:I

    const-string/jumbo v3, "spanX: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanX:I

    const-string/jumbo v3, "spanY: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSpanY:I

    const-string v3, "itemType: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mItemType:I

    const-string v3, "appWidgetId: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetId:I

    const-string v3, "iconPackage: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconPackage:Ljava/lang/String;

    const-string v3, "iconResource: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconResource:Ljava/lang/String;

    const-string v3, "appWidgetProvider: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetProvider:Ljava/lang/String;

    const-string/jumbo v3, "restored: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRestoreFlag:I

    const-string/jumbo v3, "profileId: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mSerialNumber:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rank: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRank:I

    const-string/jumbo v3, "options: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mOptions:I

    const-string v3, "appWidgetSource: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mAppWidgetSource:I

    const-string/jumbo v3, "user_id: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUserId:I

    const-string v3, "iconType: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIconType:I

    const-string v3, "card_type: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardType:I

    const-string v3, "card_host_id: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardHostId:I

    const-string/jumbo v3, "service_id: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mServiceId:Ljava/lang/String;

    const-string v3, "card_category: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mCardCategory:I

    const-string/jumbo v3, "recommendId: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mRecommendId:I

    const-string/jumbo v3, "user: "

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isSpanXFullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->mIsSpanXFullScreen:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
