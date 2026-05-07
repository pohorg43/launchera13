.class public final Lcom/android/launcher/backup/util/DatabaseLoaderCursor;
.super Landroid/database/CursorWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;,
        Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;,
        Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;

.field private static final ITEM_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAppWidgetIdIndex:I

.field private mAppWidgetProviderIndex:I

.field private mAppWidgetSourceIndex:I

.field private mCardCategoryIndex:I

.field private mCardHostIdIndex:I

.field private mCardTypeIndex:I

.field private mCellXIndex:I

.field private mCellYIndex:I

.field private mContainerIndex:I

.field private final mContext:Landroid/content/Context;

.field private mDDatabaseItemInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

.field private mDDatabaseScreenInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

.field private mIconIndex:I

.field private mIconPackageIndex:I

.field private mIconResourceIndex:I

.field private mIconTypeIndex:I

.field private mIdIndex:I

.field private mIntentIndex:I

.field private mItemTypeIndex:I

.field private final mLoadScreen:Z

.field private mNumColumns:I

.field private mOptionsIndex:I

.field private mProfileIdIndex:I

.field private final mProjection:[Ljava/lang/String;

.field private mRankIndex:I

.field private mRecommendIdIndex:I

.field private mRestoredIndex:I

.field private mScreenIdIndex:I

.field private mScreenIndex:I

.field private mScreenRankIndex:I

.field private mServiceIdIndex:I

.field private mSpanXIndex:I

.field private mSpanYIndex:I

.field private mTitleIndex:I

.field private mUserIdIndex:I


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    new-instance v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->Companion:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$Companion;

    const-string v0, "_id"

    const-string/jumbo v1, "screenRank"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->SCREEN_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "intent"

    const-string v4, "container"

    const-string/jumbo v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "itemType"

    const-string v11, "appWidgetId"

    const-string v12, "iconPackage"

    const-string v13, "iconResource"

    const-string v14, "icon"

    const-string v15, "appWidgetProvider"

    const-string/jumbo v16, "restored"

    const-string/jumbo v17, "profileId"

    const-string/jumbo v18, "rank"

    const-string/jumbo v19, "options"

    const-string v20, "appWidgetSource"

    const-string/jumbo v21, "user_id"

    const-string v22, "iconType"

    const-string v23, "card_type"

    const-string v24, "card_host_id"

    const-string/jumbo v25, "service_id"

    const-string v26, "card_category"

    const-string/jumbo v27, "recommendId"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->ITEM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z[Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 7

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mLoadScreen:Z

    iput-object p4, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProjection:[Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenRankIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mTitleIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIntentIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContainerIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellXIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellYIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanXIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanYIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mItemTypeIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconPackageIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconResourceIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetProviderIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRestoredIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProfileIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRankIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mOptionsIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetSourceIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mUserIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconTypeIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardTypeIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardHostIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mServiceIdIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardCategoryIndex:I

    iput p2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRecommendIdIndex:I

    const-string p2, "AddCardManager"

    const-string p4, "_id"

    if-eqz p3, :cond_6b

    invoke-direct {p0, p1, p4}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIdIndex:I

    const-string/jumbo p3, "screenRank"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenRankIndex:I

    goto/16 :goto_168

    :cond_6b
    invoke-direct {p0, p1, p4}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIdIndex:I

    const-string/jumbo p3, "title"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mTitleIndex:I

    const-string p3, "intent"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIntentIndex:I

    const-string p3, "container"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContainerIndex:I

    const-string/jumbo p3, "screen"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIndex:I

    const-string p3, "cellX"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellXIndex:I

    const-string p3, "cellY"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellYIndex:I

    const-string/jumbo p3, "spanX"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanXIndex:I

    const-string/jumbo p3, "spanY"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanYIndex:I

    const-string p3, "itemType"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mItemTypeIndex:I

    const-string p3, "appWidgetId"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetIdIndex:I

    const-string p3, "iconPackage"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconPackageIndex:I

    const-string p3, "iconResource"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconResourceIndex:I

    const-string p3, "icon"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconIndex:I

    const-string p3, "appWidgetProvider"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetProviderIndex:I

    const-string/jumbo p3, "restored"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRestoredIndex:I

    const-string/jumbo p3, "profileId"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProfileIdIndex:I

    const-string/jumbo p3, "rank"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRankIndex:I

    const-string/jumbo p3, "options"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mOptionsIndex:I

    const-string p3, "appWidgetSource"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetSourceIndex:I

    const-string/jumbo p3, "user_id"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mUserIdIndex:I

    const-string p3, "iconType"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconTypeIndex:I

    const-string p3, "card_type"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardTypeIndex:I

    const-string p3, "card_host_id"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardHostIdIndex:I

    const-string/jumbo p3, "service_id"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mServiceIdIndex:I

    const-string p3, "card_category"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardCategoryIndex:I

    invoke-static {p5}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p3

    if-eqz p3, :cond_168

    :try_start_149
    const-string/jumbo p3, "recommendId"

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRecommendIdIndex:I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_152} :catch_153

    goto :goto_168

    :catch_153
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " getColumnIndexIfPossible mRecommendIdIndex e:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_168
    :goto_168
    new-instance p1, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    iget-object p3, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p5}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p1

    const-string p3, " getModeLayout layoutCellXY: "

    invoke-static {p5, p3}, Lt/b;->a(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "toString(this)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    aget p1, p1, p2

    iput p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mNumColumns:I

    return-void
.end method

.method public static final synthetic access$getITEM_PROJECTION$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->ITEM_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSCREEN_PROJECTION$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->SCREEN_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private final getBlobIfPossible(I[B)[B
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object p0

    return-object p0

    :cond_8
    return-object p2
.end method

.method private final getColumnIndexIfPossible(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProjection:[Ljava/lang/String;

    if-eqz p0, :cond_d

    invoke-static {p0, p2}, Lz2/h;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, -0x1

    return p0

    :cond_d
    :goto_d
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final getIntIfPossible(II)I
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    return p0

    :cond_8
    return p2
.end method

.method private final getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object p2
.end method

.method private final getUserHandle(JI)Landroid/os/UserHandle;
    .registers 5

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/pm/UserCache;->getUserHandler(JI)Landroid/os/UserHandle;

    move-result-object p0

    const-string p1, "UserCache.INSTANCE[mCont…ler(serialNumber, userId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getUserHandlerIfPossible(IIJILandroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    if-eq p2, v0, :cond_a

    invoke-direct {p0, p3, p4, p5}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getUserHandle(JI)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_a
    return-object p6
.end method


# virtual methods
.method public final getMDDatabaseItemInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseItemInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    return-object p0
.end method

.method public final getMDDatabaseScreenInfo()Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseScreenInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    return-object p0
.end method

.method public moveToNext()Z
    .registers 11

    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1b9

    iget-boolean v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mLoadScreen:Z

    if-eqz v1, :cond_2d

    new-instance v1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    invoke-direct {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseScreenInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->getMId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->setMId(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenRankIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->getMScreenRank()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;->setMScreenRank(I)V

    goto/16 :goto_1b9

    :cond_2d
    new-instance v1, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    invoke-direct {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseItemInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMId(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mTitleIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMTitle(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIntentIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIntent(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mContainerIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMContainer()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMContainer(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mScreenIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMScreen()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMScreen(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellXIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMCellX(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCellYIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCellY()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMCellY(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanXIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanX(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mSpanYIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanY()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSpanY(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mItemTypeIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMItemType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMItemType(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMAppWidgetId(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconPackageIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIconPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIconPackage(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconResourceIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIconResource()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIconResource(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIcon()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getBlobIfPossible(I[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIcon([B)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMAppWidgetProvider(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRestoredIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMRestoreFlag()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMRestoreFlag(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProfileIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSerialNumber()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMSerialNumber(J)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRankIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMRank()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMRank(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mOptionsIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMOptions()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMOptions(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mAppWidgetSourceIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMAppWidgetSource()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMAppWidgetSource(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mUserIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMUserId(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mIconTypeIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMIconType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIconType(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardTypeIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMCardType(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardHostIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardHostId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMCardHostId(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mServiceIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getStringIfPossible(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMServiceId(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mCardCategoryIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMCardCategory()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMCardCategory(I)V

    iget v2, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mRecommendIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMRecommendId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getIntIfPossible(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMRecommendId(I)V

    iget v4, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mProfileIdIndex:I

    iget v5, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mUserIdIndex:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSerialNumber()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMUserId()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMUser()Landroid/os/UserHandle;

    move-result-object v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->getUserHandlerIfPossible(IIJILandroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMUser(Landroid/os/UserHandle;)V

    iget p0, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mNumColumns:I

    invoke-virtual {v1}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->getMSpanX()I

    move-result v2

    if-ne p0, v2, :cond_1b9

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;->setMIsSpanXFullScreen(Z)V

    :cond_1b9
    :goto_1b9
    return v0
.end method

.method public final setMDDatabaseItemInfo(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseItemInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseItemInfo;

    return-void
.end method

.method public final setMDDatabaseScreenInfo(Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/util/DatabaseLoaderCursor;->mDDatabaseScreenInfo:Lcom/android/launcher/backup/util/DatabaseLoaderCursor$DatabaseScreenInfo;

    return-void
.end method
