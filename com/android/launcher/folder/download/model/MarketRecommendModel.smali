.class public final Lcom/android/launcher/folder/download/model/MarketRecommendModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

.field public static final TAG:Ljava/lang/String; = "MarketRecommendModel"


# instance fields
.field private final mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatestMarketRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarketRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAppsApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAppsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMustPlayApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMustPlayAppsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopularApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopularMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopMarketInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->Companion:Lcom/android/launcher/folder/download/model/MarketRecommendModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-10(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-6(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-20(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method private final coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_1e
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-12(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-13(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId$lambda-0(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-3(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-18(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-19(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-16(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId$lambda-1(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-4(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-21(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-15(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-9(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkg$lambda-7(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-10(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-12(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByPkg$lambda-13(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-15(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByPkg$lambda-16(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-18(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByPkg$lambda-19(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-20(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-21(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-3(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByPkg$lambda-4(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-6(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByPkg$lambda-7(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMarketItemsByPkg$lambda-9(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    const-string v0, "$pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_1a

    move v0, v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private static final removeMarketItemsByRecommendId$lambda-0(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result p1

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static final removeMarketItemsByRecommendId$lambda-1(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result p1

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method


# virtual methods
.method public final declared-synchronized clearAllData()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final coverBitmapStyle()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_36

    :cond_46
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_4c

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_62

    :cond_72
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->coverBitmapStyleForItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_78

    :cond_88
    return-void
.end method

.method public final getMAllApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMAllMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMLatestMarketRecommendInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMarketRecommendInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMoreAppsApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMMoreAppsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMMustPlayApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMMustPlayAppsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMPopularApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMPopularMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMToolsApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMToolsMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getMTopApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    return-object p0
.end method

.method public final getMTopMarketInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final declared-synchronized removeMarketItemsByPkg(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_80

    :cond_50
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0xc

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_80
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lv/c;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lv/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_ac
    .catchall {:try_start_1 .. :try_end_ac} :catchall_ae

    monitor-exit p0

    return-void

    :catchall_ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMarketItemsByRecommendId(I)V
    .registers 5

    monitor-enter p0

    packed-switch p1, :pswitch_data_62

    goto :goto_46

    :pswitch_5  #0x6
    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMustPlayAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_10  #0x5
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mAllMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_1b  #0x4
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mToolsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_26  #0x3
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMoreAppsMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_31  #0x2
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mPopularMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_46

    :pswitch_3c  #0x1
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mTopMarketInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_46
    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mLatestMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lv/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lv/b;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->mMarketRecommendInfoList:Ljava/util/List;

    new-instance v1, Lv/b;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lv/b;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_31  #00000002
        :pswitch_26  #00000003
        :pswitch_1b  #00000004
        :pswitch_10  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method
