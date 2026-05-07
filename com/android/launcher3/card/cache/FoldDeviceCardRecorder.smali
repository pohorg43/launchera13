.class public final Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CACHE_INSTANT_ENABLE:Z = true

.field public static final INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

.field private static final TAG:Ljava/lang/String; = "FoldDeviceCardRecorder"

.field private static bindingItems:Z

.field private static final cachedCardsInUsContainer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ly2/i<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final cardViewCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private static final instantCardCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/hapjs/card/api/Card;",
            ">;"
        }
    .end annotation
.end field

.field private static markCaching:Z

.field private static recordingPage:I

.field private static final usCardCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-direct {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordingPage:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedCardsInUsContainer:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage$lambda-17(Lcom/android/launcher3/OplusWorkspace;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveUSCardContainerForPage$lambda-10$lambda-9(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveInstantCardsForPage$lambda-5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage$lambda-12(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveCardContentForPage$lambda-17$lambda-15$lambda-14(Landroid/view/View;)V

    return-void
.end method

.method private final getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;
    .registers 4

    iget p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const/16 v0, 0x26

    const/4 v1, 0x3

    if-ne p0, v1, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_54
    return-object p0
.end method

.method private static final saveCardContentForPage$lambda-12(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V
    .registers 5

    const-string v0, "$recorderRefresh"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/android/launcher3/CellLayout;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-nez p1, :cond_10

    return-void

    :cond_10
    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_59

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v2, :cond_22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    sget-object v1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v2, "it.itemInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->checkPictureAble(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_38

    :cond_59
    :goto_59
    return-void
.end method

.method private static final saveCardContentForPage$lambda-17(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    const-string v0, "$workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lz/a;->e:Lz/a;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "saveCardContentForPage:  cost time = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FoldDeviceCardRecorder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final saveCardContentForPage$lambda-17$lambda-15$lambda-14(Landroid/view/View;)V
    .registers 5

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/launcher3/CellLayout;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_5f

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v2, :cond_1d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_47

    goto :goto_4e

    :cond_47
    invoke-virtual {v1}, Lcom/oplus/card/helper/SmartEngine;->isQuickCardEngine()Z

    move-result v1

    if-nez v1, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    :goto_4e
    if-eqz v2, :cond_33

    sget-object v1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "it.itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordASmartView(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/CommonCardView;)V

    goto :goto_33

    :cond_5f
    :goto_5f
    return-void
.end method

.method private final saveInstantCard(Lcom/android/launcher3/card/CommonCardView;)Lorg/hapjs/card/api/Card;
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_9

    move-object p0, p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardCache()Ljava/lang/Object;

    move-result-object p0

    :goto_d
    instance-of v0, p0, Lorg/hapjs/card/api/Card;

    if-eqz v0, :cond_14

    move-object p1, p0

    check-cast p1, Lorg/hapjs/card/api/Card;

    :cond_14
    return-object p1
.end method

.method private final saveInstantCardsForPage(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 2

    sget-object p0, Lcom/android/launcher/n;->f:Lcom/android/launcher/n;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final saveInstantCardsForPage$lambda-5(Landroid/view/View;)V
    .registers 5

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/launcher3/CellLayout;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_60

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v2, :cond_1d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_48

    goto :goto_4f

    :cond_48
    invoke-virtual {v1}, Lcom/oplus/card/helper/SmartEngine;->isQuickCardEngine()Z

    move-result v1

    if-ne v1, v3, :cond_4f

    move v2, v3

    :cond_4f
    :goto_4f
    if-eqz v2, :cond_33

    sget-object v1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "it.itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordASmartView(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/CommonCardView;)V

    goto :goto_33

    :cond_60
    :goto_60
    return-void
.end method

.method private final savePicture(Lcom/android/launcher3/card/CommonCardView;)Landroid/graphics/Picture;
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    move-object p0, v0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_d
    if-nez p0, :cond_18

    const/4 p0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    move v1, p0

    move-object p0, v2

    goto :goto_19

    :cond_18
    const/4 v1, 0x1

    :goto_19
    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    invoke-interface {p1}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object p1

    if-eqz v1, :cond_2b

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v0, p0}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savePicture: cropPic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bp.height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FoldDeviceCardRecorder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final saveUSCard(Lcom/android/launcher3/card/CommonCardView;)Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_9

    move-object p0, p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardCache()Ljava/lang/Object;

    move-result-object p0

    :goto_d
    instance-of v0, p0, Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v0, :cond_14

    move-object p1, p0

    check-cast p1, Lcom/oplus/seedling/sdk/seedling/ISeedling;

    :cond_14
    return-object p1
.end method

.method private final saveUSCardContainerForPage(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 7

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p0

    if-nez p0, :cond_a

    goto/16 :goto_96

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object v0

    invoke-interface {v0}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_30

    :cond_2f
    move-object v2, v4

    :goto_30
    const v3, 0x7f0a046e

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    if-eqz v3, :cond_3e

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    :cond_3e
    if-eqz v2, :cond_17

    new-instance v1, Ly2/i;

    invoke-direct {v1, v2, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_49
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getCachedCardsInUsContainer()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "it.itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getChildCards()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_74

    goto :goto_88

    :cond_74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->markCacheActivated()V

    goto :goto_78

    :cond_88
    :goto_88
    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_96
    return-void
.end method

.method private static final saveUSCardContainerForPage$lambda-10$lambda-9(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 5

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getChildCards()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_31

    :cond_12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardView;

    sget-object v1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "card.itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordASmartView(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/CommonCardView;)V

    goto :goto_16

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public final checkPictureAble(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 4

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    :goto_2d
    return p0
.end method

.method public final clearAllCardViewCaches()V
    .registers 2

    const-string p0, "FoldDeviceCardRecorder"

    const-string v0, "clearAllCardViewCaches"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedCardsInUsContainer:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final clearSpecifiedCard(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 7

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    goto :goto_16

    :cond_f
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isQuickCardEngine()Z

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_16
    const/4 v3, 0x0

    const-string v4, "cardView.itemInfo"

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_2c
    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_3a

    :cond_33
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v2, :cond_3a

    move v1, v2

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_4d

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_4d
    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    return-void
.end method

.method public final clearSpecifiedUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 4

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedCardsInUsContainer:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    const-string v1, "cardView.itemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final finishBindingItems()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->bindingItems:Z

    return-void
.end method

.method public final getCachedCardsInUsContainer()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ly2/i<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;>;>;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedCardsInUsContainer:Ljava/util/Map;

    return-object p0
.end method

.method public final markCaching()V
    .registers 1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->markCaching:Z

    return-void
.end method

.method public final recordASmartView(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/CommonCardView;)V
    .registers 6

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  cardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FoldDeviceCardRecorder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    :cond_3a
    move v0, v2

    goto :goto_43

    :cond_3c
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isQuickCardEngine()Z

    move-result v0

    if-ne v0, v1, :cond_3a

    move v0, v1

    :goto_43
    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveInstantCard(Lcom/android/launcher3/card/CommonCardView;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :cond_4f
    invoke-virtual {p2}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_57

    :cond_55
    move v1, v2

    goto :goto_5d

    :cond_57
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v1, :cond_55

    :goto_5d
    if-eqz v1, :cond_69

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveUSCard(Lcom/android/launcher3/card/CommonCardView;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :cond_69
    invoke-virtual {p2, v2}, Lcom/android/launcher3/card/CommonCardView;->getViewScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_70

    goto :goto_8e

    :cond_70
    new-instance p2, Landroid/graphics/Picture;

    invoke-direct {p2}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Picture;->endRecording()V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8e
    return-void
.end method

.method public final saveCardContentForPage(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    const-string v1, "FoldDeviceCardRecorder"

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo p0, "saveInstantCardsForPage, no Permission, no CardPreload image."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    sget-boolean v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->markCaching:Z

    if-eqz v0, :cond_3c

    const-string/jumbo p1, "saveCardContentForPage, markCaching is true"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->unMarkCaching()V

    return-void

    :cond_3c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "saveCardContentForPage, caller: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    sget v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordingPage:I

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_62

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    sput v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->recordingPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches()V

    :cond_62
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveInstantCardsForPage(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->saveUSCardContainerForPage(Lcom/android/launcher3/OplusWorkspace;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_80

    const-string/jumbo p0, "saveCardContentForPage, cache re-used."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_80
    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startBindingItems()V
    .registers 1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->bindingItems:Z

    return-void
.end method

.method public final tryGetCacheInstantCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lorg/hapjs/card/api/Card;
    .registers 3

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->instantCardCaches:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/Card;

    if-nez p0, :cond_14

    goto :goto_2b

    :cond_14
    invoke-interface {p0}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_2b

    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_2b

    :cond_22
    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {p0}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_2b
    return-object p0
.end method

.method public final tryGetCachePicture(Lcom/android/launcher3/card/LauncherCardInfo;)Landroid/graphics/Picture;
    .registers 3

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardViewCaches:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Picture;

    return-object p0
.end method

.method public final tryGetCacheUSCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 4

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tryGetCacheUSCard key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->usCardCaches:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FoldDeviceCardRecorder"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-object p0
.end method

.method public final tryGetUSContainerCache(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ")",
            "Ljava/util/List<",
            "Ly2/i<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedCardsInUsContainer:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final unMarkCaching()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->markCaching:Z

    return-void
.end method
