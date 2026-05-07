.class public Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/seedling/ISeedling;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingManagerDefaultImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning, default impl! maybe version is not compatible, method name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingManagerDefaultImpl"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public getBusinessPkgName()Ljava/lang/String;
    .registers 2

    const-string v0, "getBusinessPkgName"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCardEngineType()Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
    .registers 4

    sget-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_UNKNOWN:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeedlingCardType,return defaultType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCardType()I
    .registers 2

    const-string v0, "getCardType"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentPageId()Ljava/lang/String;
    .registers 2

    const-string v0, "getCurrentPageId"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getIntentList(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "getIntentList"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 2

    const-string v0, "getServiceId"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getShortcutsConfigInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "getShortcutsConfigInfo"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lz2/u;->a:Lz2/u;

    return-object p0
.end method

.method public getTimestamp()J
    .registers 3

    const-string v0, "getTimestamp"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 2

    const-string v0, "getUIData"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "getUpkVersion"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    const-string v0, "getView"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Ly2/c;

    invoke-direct {p0}, Ly2/c;-><init>()V

    throw p0
.end method

.method public getViewBySize(I)Landroid/view/View;
    .registers 2

    const-string p1, "getViewBySize"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewListBySize(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string p1, "getViewListBySize"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lz2/u;->a:Lz2/u;

    return-object p0
.end method

.method public getViewScreenshot()Landroid/graphics/Bitmap;
    .registers 2

    const-string v0, "getViewScreenshot"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCanStartAnimation(Landroid/view/View;Z)V
    .registers 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notifyCanStartAnimation"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public notifyLiteReload()V
    .registers 2

    const-string v0, "notifyLiteReload"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public notifySizeChange(II)V
    .registers 3

    const-string p1, "notifySizeChange"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onHide()V
    .registers 2

    const-string v0, "onHide"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onShow()V
    .registers 2

    const-string v0, "onShow"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    const-string p1, "onTrimMemory"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public performCardClickAction(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string p1, "performCardClickAction"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public performClick(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "performClick"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setAODStatus(Z)V
    .registers 2

    const-string p1, "setAODStatus"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    const-string p1, "setMaxHeight for all view"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxHeight(Landroid/view/View;I)V
    .registers 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setMaxHeight for single view"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    const-string p1, "setMaxWidth for all view"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .registers 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setMaxWidth for single view"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenLocked(Z)V
    .registers 2

    const-string p1, "setScreenLocked"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setSecondaryScreenCapsuleDarkMode(ZZI)V
    .registers 4

    const-string p1, "setSecondaryScreenCapsuleDarkMode"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetColor(I)V
    .registers 2

    const-string p1, "setWidgetColor(color)"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetColor(IZ)V
    .registers 3

    const-string p1, "setWidgetColor(color, isColorReversed)"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public updateData(Ljava/lang/String;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "updateData string"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public updateData([B)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "updateData byteArray"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method
