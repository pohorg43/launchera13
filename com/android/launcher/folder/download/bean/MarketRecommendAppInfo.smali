.class public final Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/model/data/WorkspaceItemFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;
    }
.end annotation


# static fields
.field private static final CONTENTVALUESSIZE:I = 0x5

.field public static final Companion:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field private static final KEY_JUMP_URL:Ljava/lang/String; = "jumpUrl"

.field private static final KEY_LAUNCHERMODE:Ljava/lang/String; = "launcherMode"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final KEY_RECOMMENDID:Ljava/lang/String; = "recommendId"

.field public static final MARKETINFO_STATUS_INVISIBLE:I = 0x0

.field public static final MARKETINFO_STATUS_VISIBLE:I = 0x1

.field private static final MSG_NOT_RETURN_MARKET:Ljava/lang/String; = "&goback=1"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field private mDownloaded:Z

.field private mIconUri:Ljava/lang/String;

.field private mJumpUrl:Ljava/lang/String;

.field private mLauncherMode:I

.field private mPkgName:Ljava/lang/String;

.field private mRecommendId:I

.field private mReqId:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->Companion:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    sget-object v6, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    const-string v0, "LOW_RES_INFO"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;I)V
    .registers 12

    const-string v0, "mAppName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mPkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mIconUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mJumpUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBitmapInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mReqId"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    iput-object p6, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput p7, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    iput p8, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    iput-object p9, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    iput p10, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 26

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v7, v1

    goto :goto_b

    :cond_9
    move/from16 v7, p5

    :goto_b
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_18

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    const-string v2, "LOW_RES_INFO"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_1a

    :cond_18
    move-object/from16 v8, p6

    :goto_1a
    and-int/lit8 v1, v0, 0x40

    const/4 v2, -0x1

    if-eqz v1, :cond_21

    move v9, v2

    goto :goto_23

    :cond_21
    move/from16 v9, p7

    :goto_23
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_29

    move v10, v2

    goto :goto_2b

    :cond_29
    move/from16 v10, p8

    :goto_2b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_33

    const-string v1, ""

    move-object v11, v1

    goto :goto_35

    :cond_33
    move-object/from16 v11, p9

    :goto_35
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    move v12, v0

    goto :goto_3e

    :cond_3c
    move/from16 v12, p10

    :goto_3e
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;IILjava/lang/Object;)Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-boolean v6, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    goto :goto_2c

    :cond_2a
    move/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget-object v7, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget v8, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    goto :goto_3e

    :cond_3c
    move/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget v9, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    goto :goto_47

    :cond_45
    move/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget v1, v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    goto :goto_59

    :cond_57
    move/from16 v1, p10

    :goto_59
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;I)Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    return p0
.end method

.method public final component6()Lcom/android/launcher3/icons/BitmapInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;I)Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;
    .registers 23

    const-string v0, "mAppName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mPkgName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mIconUri"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mJumpUrl"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBitmapInfo"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mReqId"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/launcher3/icons/BitmapInfo;IILjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-boolean v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    iget-boolean v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    if-eq v1, v3, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    iget v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    iget v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    iget p1, p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    if-eq p0, p1, :cond_6a

    return v2

    :cond_6a
    return v0
.end method

.method public final getMAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0
.end method

.method public final getMDownloaded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    return p0
.end method

.method public final getMIconUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getMJumpUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getMLauncherMode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    return p0
.end method

.method public final getMPkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMRecommendId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    return p0
.end method

.method public final getMReqId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMStatus()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :cond_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketRecommendAppClassName"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent().run {\n         …APP_CLASSNAME))\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/high16 v1, 0x20000000

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    const-string/jumbo p0, "makeWorkspaceItem: mWorkspaceItemInfo = "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TAG"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setMAppName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public final setMBitmapInfo(Lcom/android/launcher3/icons/BitmapInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public final setMDownloaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    return-void
.end method

.method public final setMIconUri(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    return-void
.end method

.method public final setMJumpUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMLauncherMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    return-void
.end method

.method public final setMPkgName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public final setMRecommendId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    return-void
.end method

.method public final setMReqId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    return-void
.end method

.method public final setMStatus(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    return-void
.end method

.method public final toContentValues()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1c

    goto :goto_2b

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_2b
    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    const-string v2, "iconUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    const-string v2, "jumpUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "recommendId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "launchermode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    const-string/jumbo v2, "reqid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "MarketRecommendAppInfo(mAppName=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mPkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mIconUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mJumpUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mJumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mDownloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBitmapInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mBitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mRecommendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLauncherMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mLauncherMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReqId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->mStatus:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
